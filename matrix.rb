require "rspec/autorun"

class Matrix
  def initialize(matrix = [])
    @matrix = matrix
  end

  def rotate_90_degrees_clockwise
    transpose.map { |e| e.reverse } 
  end

  def transpose
    matrix_transpose = []
    for i in 0..(matrix_size = @matrix.size - 1)
      matrix_transpose[i] = []
      for j in 0..matrix_size
        matrix_transpose[i] << @matrix[j][i]
      end
    end
    matrix_transpose
  end

  def print_rotate_90_degrees_clockwise
    rotate_90_degrees_clockwise.each { |e| puts e.join(' ') }
  end
end


# unit test
describe Matrix do
  let (:original_matrix) {
    [
      [1 ,2, 3], 
      [4, 5, 6], 
      [7, 8, 9]
    ]
  } 
  let (:matrix_rotate_90_degrees_counter_clockwise) {
    [
      [7, 4, 1], 
      [8, 5, 2], 
      [9, 6, 3]
    ]
  }

  let (:matrix_rotate_90_degrees_anti_counter_clockwise) {
    [
      [3, 6, 9], 
      [2, 5, 8], 
      [1, 4, 7]
    ]
  }

  context '#rotate' do 
    it 'should return matrix rotate 90 degrees counter clockwise' do 
      matrix_rotation = described_class.new(original_matrix)
      expect(matrix_rotation.rotate_90_degrees_clockwise).to eql(matrix_rotate_90_degrees_counter_clockwise)
      expect(matrix_rotation.rotate_90_degrees_clockwise).not_to eql(matrix_rotate_90_degrees_anti_counter_clockwise)
    end
  end
end


# execute the blow block code to see example in console
matrix = Matrix.new([
  [1 ,2, 3], 
  [4, 5, 6], 
  [7, 8, 9]
])
matrix.print_rotate_90_degrees_clockwise
