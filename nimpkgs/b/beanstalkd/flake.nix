{
  description = ''
    A beanstalkd work queue client library.
  '';
  inputs.src-beanstalkd.url = "https://github.com/tormaroe/beanstalkd.nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
