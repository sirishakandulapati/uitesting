
def load_user_yml(yml_name)
  project_root = File.join(__dir__, '../../')
  yml = YAML.load_file(File.join(project_root, 'lib/domain', "#{yml_name}"))
  yml
end

