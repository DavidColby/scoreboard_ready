import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import consumer from '../channels/consumer'

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

application.consumer = consumer
