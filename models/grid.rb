class Grid
  def initialize(size = { 'x' => 3, 'y' => 3 })
    @columns = Array.new size['x'] { Array.new size['y'] { nil } }
  end

  def width
    @columns.size
  end

  def height
    @columns[0].size unless @columns[0].nil?
  end

  def column_at(x = 0)
    @columns[0] unless x >= width
  end

  def row_at(y = 0)
    return nil if y >= height
    row = Array.new width
    i = 0
    @columns.each do |column|
      row[i] = column[i][y]
      i += 1
    end
    row
  end

  def block_at(x, y)
    return nil if x >= width || y >= height
    @columns[x][y]
  end

  def row_to_s(row = 0)
    return nil if row >= height
    out = ''
    @columns.each do |column|
      out += column[row].to_s
    end
    out
  end

  def to_s
    out = ''
    height.times do|i|
      out += row_to_s i
      out += "\n"
    end
    out
  end
end
