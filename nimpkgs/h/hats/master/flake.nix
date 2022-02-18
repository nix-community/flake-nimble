{
  description = ''Various kinds of hashed array trees.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hats-master.flake = false;
  inputs.src-hats-master.type = "github";
  inputs.src-hats-master.owner = "davidgarland";
  inputs.src-hats-master.repo = "nim-hats";
  inputs.src-hats-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hats-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hats-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hats-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}