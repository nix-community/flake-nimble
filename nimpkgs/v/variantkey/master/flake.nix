{
  description = ''encode/decode variants to/from uint64'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-variantkey-master.flake = false;
  inputs.src-variantkey-master.type = "github";
  inputs.src-variantkey-master.owner = "brentp";
  inputs.src-variantkey-master.repo = "variantkey-nim";
  inputs.src-variantkey-master.ref = "refs/heads/master";
  inputs.src-variantkey-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variantkey-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variantkey-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variantkey-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}