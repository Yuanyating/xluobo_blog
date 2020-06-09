'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'hi, egg';
  }
  async list() {
    this.ctx.body = '<h1>yyt</h1>'
  }
}

module.exports = HomeController;
