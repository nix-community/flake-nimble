{
  description = ''Gravatar API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gravatar-master.flake = false;
  inputs.src-gravatar-master.type = "github";
  inputs.src-gravatar-master.owner = "achesak";
  inputs.src-gravatar-master.repo = "nim-gravatar";
  inputs.src-gravatar-master.ref = "refs/heads/master";
  inputs.src-gravatar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gravatar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gravatar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gravatar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}