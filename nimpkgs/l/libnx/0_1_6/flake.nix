{
  description = ''A port of libnx to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libnx-0_1_6.flake = false;
  inputs.src-libnx-0_1_6.type = "github";
  inputs.src-libnx-0_1_6.owner = "jyapayne";
  inputs.src-libnx-0_1_6.repo = "nim-libnx";
  inputs.src-libnx-0_1_6.ref = "refs/tags/0.1.6";
  inputs.src-libnx-0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/genotrance/nimgen".type = "github";
  # inputs."https://github.com/genotrance/nimgen".owner = "riinr";
  # inputs."https://github.com/genotrance/nimgen".repo = "flake-nimble";
  # inputs."https://github.com/genotrance/nimgen".ref = "flake-pinning";
  # inputs."https://github.com/genotrance/nimgen".dir = "nimpkgs/h/https://github.com/genotrance/nimgen";
  # inputs."https://github.com/genotrance/nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/genotrance/nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/jyapayne/switch-build".type = "github";
  # inputs."https://github.com/jyapayne/switch-build".owner = "riinr";
  # inputs."https://github.com/jyapayne/switch-build".repo = "flake-nimble";
  # inputs."https://github.com/jyapayne/switch-build".ref = "flake-pinning";
  # inputs."https://github.com/jyapayne/switch-build".dir = "nimpkgs/h/https://github.com/jyapayne/switch-build";
  # inputs."https://github.com/jyapayne/switch-build".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/jyapayne/switch-build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libnx-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}