{
  description = ''funchook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-funchook-0_1_2.flake = false;
  inputs.src-funchook-0_1_2.type = "github";
  inputs.src-funchook-0_1_2.owner = "ba0f3";
  inputs.src-funchook-0_1_2.repo = "funchook.nim";
  inputs.src-funchook-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-funchook-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/ba0f3/distorm3.nim".type = "github";
  # inputs."https://github.com/ba0f3/distorm3.nim".owner = "riinr";
  # inputs."https://github.com/ba0f3/distorm3.nim".repo = "flake-nimble";
  # inputs."https://github.com/ba0f3/distorm3.nim".ref = "flake-pinning";
  # inputs."https://github.com/ba0f3/distorm3.nim".dir = "nimpkgs/h/https://github.com/ba0f3/distorm3.nim";
  # inputs."https://github.com/ba0f3/distorm3.nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/ba0f3/distorm3.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-funchook-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-funchook-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-funchook-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}