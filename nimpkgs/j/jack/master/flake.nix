{
  description = ''Shiny bindings to the JACK Audio Connection Kit.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jack-master.flake = false;
  inputs.src-jack-master.type = "github";
  inputs.src-jack-master.owner = "Skrylar";
  inputs.src-jack-master.repo = "nim-jack";
  inputs.src-jack-master.ref = "refs/heads/master";
  inputs.src-jack-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}