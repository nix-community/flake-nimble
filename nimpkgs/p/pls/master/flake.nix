{
  description = ''A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pls-master.flake = false;
  inputs.src-pls-master.type = "github";
  inputs.src-pls-master.owner = "h3rald";
  inputs.src-pls-master.repo = "pls";
  inputs.src-pls-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pls-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pls-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pls-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}