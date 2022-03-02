{
  description = ''High-level libsodium bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sodium-master.flake = false;
  inputs.src-sodium-master.type = "github";
  inputs.src-sodium-master.owner = "zielmicha";
  inputs.src-sodium-master.repo = "libsodium.nim";
  inputs.src-sodium-master.ref = "refs/heads/master";
  inputs.src-sodium-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sodium-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sodium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sodium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}