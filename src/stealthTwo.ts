import { Router } from "@oak/oak";

const router = new Router();

interface Level {
  id: number;
  levelname: string;
  username: string;
  uid: number;
  size: number;
  stars: number;
  rated: number;
}

// List
router.get("/si2-(sony|steam)-list-levels\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const limit = normalizeNumber(params.get("limit"));
  console.log("List", { limit: limit });

  try {

    const buffer = await Deno.readFile(`./si2/levels.csv`);
    ctx.response.headers.set("Content-Disposition", `attachment; filename=levels.csv`);
    ctx.response.headers.set("Content-Type", "text/csv");
    ctx.response.body = new Uint8Array(buffer);

    // let levels = (await getLevelList()).reverse();
    // if (limit! > 0) { levels = levels.slice(0, limit!) }
    // let body = "";
    // for (const level of levels) {
    //   body += [
    //     level.id,
    //     btoa(level.username),
    //     btoa(level.levelname),
    //     level.stars,
    //     level.rated
    //   ].join(",") + "\n"
    // }

    // ctx.response.headers.set("Content-Disposition", `attachment; filename=levels.csv`);
    // ctx.response.headers.set("Content-Type", "text/csv");
    // ctx.response.body = body;

  } catch (error) {

    console.error(error);
    ctx.response.status = 500;

  }
});

// Download
router.get("/si2-(sony|steam)-download-level\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const id = normalizeNumber(params.get("id"));
  console.log("Download", { id: id });

  try {

    // const current = await getLevel(id!);
    // if (current) { console.log(current) };
    const buffer = await Deno.readFile(`./si2/levels/${id}.lvl`);
    ctx.response.headers.set("Content-Disposition", `attachment; filename=${id}.lvl`);
    ctx.response.headers.set("Content-Type", "application/octet-stream");
    ctx.response.body = new Uint8Array([32, ...buffer]);

  } catch (error) {

    console.error(error);
    ctx.response.status = 500;

  }
});

// Upload
router.post("/si2-(sony|steam)-(upload|overwrite)-level\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const levelname = atob(params.get("levelname")!);
  const username = atob(params.get("username")!);
  const uid = normalizeNumber(params.get("uid"));
  const size = normalizeNumber(params.get("size"));
  console.log("Upload", {
    levelname: levelname,
    username: username,
    uid: uid,
    size: size
  });

  try {

    const buffer = await ctx.request.body.arrayBuffer();
    const timestamp = Math.floor(Date.now() / 1000);
    const filename = timestamp.toString();
    const data: Level = {
      "id": timestamp,
      "levelname": levelname!,
      "username": username!,
      "uid": uid!,
      "size": size!,
      "stars": 0,
      "rated": 0
    }
    await Deno.mkdir("./si2/uploads", { recursive: true });
    await Deno.writeFile(`./si2/uploads/${filename}.lvl`, new Uint8Array(buffer));
    await Deno.writeTextFile(`./si2/uploads/${filename}.json`, JSON.stringify(data, null, 2));
    ctx.response.body = " success";
    // ctx.response.body = " dupe";
    // ctx.response.body = " fail";
    // ctx.response.body = " blocked";

  } catch (error) {

    console.error(error);
    ctx.response.body = " fail";
    ctx.response.status = 500;

  }
});

// Rate
router.get("/si2-(sony|steam)-rate\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const id = normalizeNumber(params.get("id"));
  const userscore = normalizeNumber(params.get("userscore"));
  console.log("Rate", {
    id: id,
    userscore: userscore
  });

  ctx.response.status = 200;
});

// Flag Name
router.get("/si2-(sony|steam)-flag-name\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const id = normalizeNumber(params.get("id"));
  const uid = normalizeNumber(params.get("uid"));
  console.log("Flag Name", {
    id: id,
    uid: uid
  });

  ctx.response.status = 200;
});

// Flag Content
router.get("/si2-(sony|steam)-flag-content\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const id = normalizeNumber(params.get("id"));
  const uid = normalizeNumber(params.get("uid"));
  console.log("Flag Content", {
    id: id,
    uid: uid
  });

  ctx.response.status = 200;
});

// PlayStation Auth
router.post("/authenticate_ps(3|4)\.php", async (ctx) => {
  const params = ctx.request.url.searchParams;
  const issuer = params.get("issuer");
  const buffer = await ctx.request.body.arrayBuffer();
  console.log("PlayStation Auth", { issuer: issuer });
  console.log("Auth Data", buffer);

  await Deno.mkdir("./si2/uploads", { recursive: true });
  await Deno.writeFile("./si2/uploads/auth", new Uint8Array(buffer));

  ctx.response.body = "0";
});

function normalizeNumber(s: string | null = null): number | undefined {
  return s === null || isNaN(parseInt(s)) ? undefined : parseInt(s);
};

// async function getLevelList(): Promise<Level[]> {
//   const data = JSON.parse(await Deno.readTextFile("./si2/levels.json"));
//   return data.map(([id, levelname, username, uid, size, stars, rated]) => ({
//     id, levelname, username, uid, size, stars, rated
//   }));
// };

// async function getLevel(id: number): Promise<Level | undefined> {
//   return (await getLevelList()).find((l) => l.id === id);
// };

export default router;
