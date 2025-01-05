class Icon
  attr_reader :side, :edge, :border, :space
  attr_writer :side, :edge, :border
  
  def initialize
    @space = ' '
    @border = '-'
    @edge = '+'
    @side = '|'
  end
end

class Box
  attr_reader :box, :input_str, :icon

  def initialize(str)
    @icon = Icon.new
    prepare_str(str)
    choose_box_size
  end
    
  def to_s
    construct_box
    box.each { |part| puts part }
    ''
  end
  
  def update_top_bottom_icon(glyph)
    icon.border = glyph
  end
  
  def update_side_icon(glyph)
    icon.side = glyph
  end
  
  def change_padding(value)
    raise ArgumentError if value.odd?

    choose_box_size(value)
  end

  private

  def prepare_str(str)
    @input_str = str.split.length > 10 ? truncate_line(str) : str
  end
  
  def truncate_line(str, step_by: 6, start: 0)
    arr = str.split
    result = ''
    @step_by = step_by
    
    0.step(arr.length, step_by) do |count|
      next if count.zero?
      
      if count % step_by == 0
        segment = arr[start...count].join(" ") << "\n"
        result << segment
        start += step_by
      end
    end
    result << (arr[start..-1]).join(" ")
  end

  def choose_box_size(value = 2)
    length = input_str.length 
    @padding_size = value
    @length = length > 5 ? @step_by * 12 : str.size + @padding_size
  end

  def construct_box
    @border = icon.edge + (icon.border * @length) + icon.edge
    @padding = icon.side + (icon.space * @length) + icon.side
    add_box_padding
    @box = [@border, @padding, @message, @padding, @border]
  end
  
  def add_box_padding
    pad_length = @padding.size - 2
    arr = input_str.split(/(\n)/)

    (0...arr.size).each do |idx|
      next if arr[idx].include?("\n")
      arr[idx] = icon.side + arr[idx].center(pad_length, " ") + icon.side
    end
    @message = arr.join('')
  end
end
message = "Becarefull your are not in Wonderland. I've heard the strange madness growing in your soul. But you are fortunate in your ignorance, in your isolation. You who have suffered, find where love hides. Give, share, lose - lest we die unbloomed"
one = Box.new(message)
two = Box.new('Hello world, Iam an the new guy on the block. What should I work on next?')

one.update_top_bottom_icon('+')
one.update_side_icon('/')
puts one
puts two

