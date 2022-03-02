{
  description = ''ed25519 key crypto bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ed25519-master.flake = false;
  inputs.src-ed25519-master.type = "github";
  inputs.src-ed25519-master.owner = "niv";
  inputs.src-ed25519-master.repo = "ed25519.nim";
  inputs.src-ed25519-master.ref = "refs/heads/master";
  inputs.src-ed25519-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ed25519-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ed25519-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ed25519-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}