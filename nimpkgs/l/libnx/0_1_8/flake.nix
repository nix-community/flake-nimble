{
  description = ''A port of libnx to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libnx-0_1_8.flake = false;
  inputs.src-libnx-0_1_8.type = "github";
  inputs.src-libnx-0_1_8.owner = "jyapayne";
  inputs.src-libnx-0_1_8.repo = "nim-libnx";
  inputs.src-libnx-0_1_8.ref = "refs/tags/0.1.8";
  inputs.src-libnx-0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/genotrance/nimgen".type = "github";
  inputs."https://github.com/genotrance/nimgen".owner = "riinr";
  inputs."https://github.com/genotrance/nimgen".repo = "flake-nimble";
  inputs."https://github.com/genotrance/nimgen".ref = "flake-pinning";
  inputs."https://github.com/genotrance/nimgen".dir = "nimpkgs/h/https://github.com/genotrance/nimgen";
  inputs."https://github.com/genotrance/nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/genotrance/nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."switch-build".type = "github";
  inputs."switch-build".owner = "riinr";
  inputs."switch-build".repo = "flake-nimble";
  inputs."switch-build".ref = "flake-pinning";
  inputs."switch-build".dir = "nimpkgs/s/switch-build";
  inputs."switch-build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch-build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libnx-0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}