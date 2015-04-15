root.sandbox = null

beforeEach ->
  root.sandbox = sinon.sandbox.create()

afterEach ->
  root.sandbox.restore()
