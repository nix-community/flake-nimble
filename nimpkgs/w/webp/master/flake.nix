{
  description = ''WebP Tools wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-webp-master.flake = false;
  inputs.src-webp-master.type = "github";
  inputs.src-webp-master.owner = "juancarlospaco";
  inputs.src-webp-master.repo = "nim-webp";
  inputs.src-webp-master.ref = "refs/heads/master";
  inputs.src-webp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}