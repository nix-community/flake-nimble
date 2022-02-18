{
  description = ''A beanstalkd work queue client library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-beanstalkd-master.flake = false;
  inputs.src-beanstalkd-master.type = "github";
  inputs.src-beanstalkd-master.owner = "tormaroe";
  inputs.src-beanstalkd-master.repo = "beanstalkd.nim";
  inputs.src-beanstalkd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-beanstalkd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-beanstalkd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-beanstalkd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}