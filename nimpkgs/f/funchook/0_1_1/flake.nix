{
  description = ''funchook wrapper'';
  inputs.src-funchook-0_1_1.flake = false;
  inputs.src-funchook-0_1_1.type = "github";
  inputs.src-funchook-0_1_1.owner = "ba0f3";
  inputs.src-funchook-0_1_1.repo = "funchook.nim";
  inputs.src-funchook-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."https://github.com/ba0f3/distorm3.nim".url = "path:../../../h/https://github.com/ba0f3/distorm3.nim";
  inputs."https://github.com/ba0f3/distorm3.nim".type = "github";
  inputs."https://github.com/ba0f3/distorm3.nim".owner = "riinr";
  inputs."https://github.com/ba0f3/distorm3.nim".repo = "flake-nimble";
  inputs."https://github.com/ba0f3/distorm3.nim".ref = "flake-pinning";
  inputs."https://github.com/ba0f3/distorm3.nim".dir = "nimpkgs/h/https://github.com/ba0f3/distorm3.nim";

  outputs = { self, nixpkgs, src-funchook-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-funchook-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-funchook-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}