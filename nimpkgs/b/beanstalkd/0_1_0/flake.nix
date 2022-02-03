{
  description = ''A beanstalkd work queue client library.'';
  inputs.src-beanstalkd-0_1_0.flake = false;
  inputs.src-beanstalkd-0_1_0.type = "github";
  inputs.src-beanstalkd-0_1_0.owner = "tormaroe";
  inputs.src-beanstalkd-0_1_0.repo = "beanstalkd.nim";
  inputs.src-beanstalkd-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-beanstalkd-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-beanstalkd-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-beanstalkd-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}