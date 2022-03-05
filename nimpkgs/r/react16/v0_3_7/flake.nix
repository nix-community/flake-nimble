{
  description = ''React.js 16.x bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-react16-v0_3_7.flake = false;
  inputs.src-react16-v0_3_7.type = "github";
  inputs.src-react16-v0_3_7.owner = "kristianmandrup";
  inputs.src-react16-v0_3_7.repo = "react-16.nim";
  inputs.src-react16-v0_3_7.ref = "refs/tags/v0.3.7";
  inputs.src-react16-v0_3_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-react16-v0_3_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-v0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-react16-v0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}