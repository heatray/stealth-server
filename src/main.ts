import { Application, Router } from "@oak/oak";

// import stealthOneRouter from "./stealthOne.ts";
import stealthTwoRouter from "./stealthTwo.ts";

const router = new Router();

router.get("/", (ctx) => {
  ctx.response.body = "Hello world";
});

// router.use(stealthOneRouter.routes());
router.use(stealthTwoRouter.routes());

const app = new Application();

app.use(async (ctx, next) => {
  console.log(`${ctx.request.method} ${ctx.request.url}`);
  await next();
});
app.use(router.routes());
app.use(router.allowedMethods());

const PORT = Number(Deno.env.get("STEALTH_PORT") ?? "80");
console.log(`Server running on http://localhost:${PORT}`);
await app.listen({ port: PORT });
