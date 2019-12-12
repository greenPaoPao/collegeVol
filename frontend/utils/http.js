let API = require('../utils/api.js');
const http = ({ url = '', data = {}, ...other } = {}) => {
  return new Promise((resolve, reject) => {
    wx.request({
      url: API.BASE_URL+url,
      data: data,
      header: {
        'content-type': 'application/json', // 默认值 ,
        'cookie': wx.getStorageSync('sessionId')
      },
      method: 'post',
      ...other,
      complete: (res) => {
        if (res.statusCode >= 200 && res.statusCode < 300) {
          resolve(res.data)
        } else {
          reject(res)
        }
      }
    })
  })
}

const _post = (url, data = {}) => {
  return http({
    url,
    data,
    method: 'post'
  })
}


module.exports={
  _post,
  http
}