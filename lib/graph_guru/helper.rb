module GraphGuru
	module Helper

		def line_chart(data, options={})

			data = data.map {|key, val| {key: key.to_formatted_s(:db), value: val}}
			format = options[:format] || GraphGuru.date_format
			id = SecureRandom.hex(8)

			styles = ""
			if options.has_key?(:styles)
				styles = options[:styles].inject(styles) { |styles, style|
					styles << "#{style[0]}: #{style[1]};"
				}
			end

			render partial: '/graph_guru/morris_line', locals: {
				format: format,
				styles: styles,
				data: data,
				id: id
			}
		end

	end
end