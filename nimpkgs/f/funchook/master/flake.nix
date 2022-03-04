{
  description = ''funchook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-funchook-master.flake = false;
  inputs.src-funchook-master.type = "github";
  inputs.src-funchook-master.owner = "ba0f3";
  inputs.src-funchook-master.repo = "funchook.nim";
  inputs.src-funchook-master.ref = "refs/heads/master";
  inputs.src-funchook-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/ba0f3/distorm3.nim".type = "github";
  inputs."https://github.com/ba0f3/distorm3.nim".owner = "riinr";
  inputs."https://github.com/ba0f3/distorm3.nim".repo = "flake-nimble";
  inputs."https://github.com/ba0f3/distorm3.nim".ref = "flake-pinning";
  inputs."https://github.com/ba0f3/distorm3.nim".dir = "nimpkgs/h/https://github.com/ba0f3/distorm3.nim";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-funchook-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-funchook-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-funchook-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}