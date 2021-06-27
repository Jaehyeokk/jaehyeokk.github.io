const routes = ["vue", "javascript", "etc"];

const createSidebar = () => {
  const sidebar = {};
  for (const route of routes) {
    Object.assign(sidebar, require("../" + route));
  }
  return sidebar;
};

module.exports = {
  title: "Jaehyeokk",
  description: "Blog to record",
  themeConfig: {
    logo: "https://avatars0.githubusercontent.com/u/67958514?s=120&v=4",
    nav: [
      { text: "Vue", link: "/vue/" },
      { text: "Javascript", link: "/javascript/" },
      { text: "etc.", link: "/etc/markdown/" },
      { text: "Github", link: "https://github.com/Jaehyeokk" },
    ],
    sidebar: createSidebar(),
    smoothScroll: true,
  },
};
