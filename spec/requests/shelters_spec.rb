require 'swagger_helper'

describe 'Shelters API' do

  path '/api/v1/shelters' do

    post 'Creates a shelter' do
      tags 'Shelters'
      consumes 'application/json'
      parameter name: :shelter, in: :body, schema: {
        type: :object,
        properties: {
          location: { type: :string }
        },
        required: [ 'location' ]
      }

      response '201', 'shelter created' do
        let(:shelter) { { location: 'Portland' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:shelter) { { location: '' } }
        run_test!
      end
    end
  end

  path 'api/v1/shelters' do

    get 'Retrieves a shelter' do
      tags 'Shelters'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'shelter found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            location: { type: :string }
          },
          required: [ 'id', 'location' ]

        let(:id) { 1 }
        run_test!
      end

      response '404', 'shelter not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end
  end

  path 'api/v1/shelters/{:id}' do

    put 'Updates a shelter' do
      tags 'Shelters'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'shelter found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            location: { type: :string }
          },
          required: [ 'id', 'location' ]

        let(:id) { 1 }
        run_test!
      end

      response '404', 'shelter not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end

    delete 'Deletes a blog' do
      tags 'Shelters'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'shelter found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            location: { type: :string }
          },
          required: [ 'id', 'location' ]

        let(:id) { 1 }
        run_test!
      end

      response '404', 'shelter not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end
  end
end