{
  description = ''A beanstalkd work queue client library.'';
  inputs.src-beanstalkd-master.flake = false;
  inputs.src-beanstalkd-master.type = "github";
  inputs.src-beanstalkd-master.owner = "tormaroe";
  inputs.src-beanstalkd-master.repo = "beanstalkd.nim";
  inputs.src-beanstalkd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-beanstalkd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-beanstalkd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-beanstalkd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}