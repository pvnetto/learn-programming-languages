module Writers

    def Writers.PPM(render)
        output_file = File.open("#{render[:file_name]}.ppm", 'w')

        output_file.write("P3\n")                                     # File codification (P3 for ASCII, P6 for Binary)
        output_file.write("#{render[:width]} #{render[:height]}\n")   # File dimensions
        output_file.write("255\n")                                      # Number of colors

        output_file.write(render[:data])
        output_file.close()
        return output_file
    end
end