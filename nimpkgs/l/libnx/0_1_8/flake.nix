{
  description = ''A port of libnx to Nim'';
  inputs.src-libnx-0_1_8.flake = false;
  inputs.src-libnx-0_1_8.type = "github";
  inputs.src-libnx-0_1_8.owner = "jyapayne";
  inputs.src-libnx-0_1_8.repo = "nim-libnx";
  inputs.src-libnx-0_1_8.ref = "refs/tags/0.1.8";
  
  
  inputs."https://github.com/genotrance/nimgen".url = "path:../../../h/https://github.com/genotrance/nimgen";
  inputs."https://github.com/genotrance/nimgen".type = "github";
  inputs."https://github.com/genotrance/nimgen".owner = "riinr";
  inputs."https://github.com/genotrance/nimgen".repo = "flake-nimble";
  inputs."https://github.com/genotrance/nimgen".ref = "flake-pinning";
  inputs."https://github.com/genotrance/nimgen".dir = "nimpkgs/h/https://github.com/genotrance/nimgen";

  
  inputs."switch-build".url = "path:../../../s/switch-build";
  inputs."switch-build".type = "github";
  inputs."switch-build".owner = "riinr";
  inputs."switch-build".repo = "flake-nimble";
  inputs."switch-build".ref = "flake-pinning";
  inputs."switch-build".dir = "nimpkgs/s/switch-build";

  outputs = { self, nixpkgs, src-libnx-0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libnx-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}