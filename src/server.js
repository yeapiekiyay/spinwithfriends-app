const Koa = require('koa');

const app = new Koa();
const port = parseInt(process.env.PORT, 10) || 80;

app.use(async context => {
    context.body = 'Hello world!';
});

app.listen(port);