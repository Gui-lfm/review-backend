import app from './app';

const PORT = process.env.PORT || 3000;

const server = app.listen(PORT, () => {
  // eslint-disable-next-line no-console
  console.log(`Bem vindo de volta à porta ${PORT}, Gui :)`);
});

export default server;