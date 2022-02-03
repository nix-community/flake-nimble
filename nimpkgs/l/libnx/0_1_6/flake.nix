{
  description = ''A port of libnx to Nim'';
  inputs.src-libnx-0_1_6.flake = false;
  inputs.src-libnx-0_1_6.type = "github";
  inputs.src-libnx-0_1_6.owner = "jyapayne";
  inputs.src-libnx-0_1_6.repo = "nim-libnx";
  inputs.src-libnx-0_1_6.ref = "refs/tags/0.1.6";
  
  
  inputs."https://github.com/genotrance/nimgen".url = "path:../../../h/https://github.com/genotrance/nimgen";
  inputs."https://github.com/genotrance/nimgen".type = "github";
  inputs."https://github.com/genotrance/nimgen".owner = "riinr";
  inputs."https://github.com/genotrance/nimgen".repo = "flake-nimble";
  inputs."https://github.com/genotrance/nimgen".ref = "flake-pinning";
  inputs."https://github.com/genotrance/nimgen".dir = "nimpkgs/h/https://github.com/genotrance/nimgen";

  
  inputs."https://github.com/jyapayne/switch-build".url = "path:../../../h/https://github.com/jyapayne/switch-build";
  inputs."https://github.com/jyapayne/switch-build".type = "github";
  inputs."https://github.com/jyapayne/switch-build".owner = "riinr";
  inputs."https://github.com/jyapayne/switch-build".repo = "flake-nimble";
  inputs."https://github.com/jyapayne/switch-build".ref = "flake-pinning";
  inputs."https://github.com/jyapayne/switch-build".dir = "nimpkgs/h/https://github.com/jyapayne/switch-build";

  outputs = { self, nixpkgs, src-libnx-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libnx-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}