{
  description = ''React.js 16.x bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-react16-0_3_4.flake = false;
  inputs.src-react16-0_3_4.type = "github";
  inputs.src-react16-0_3_4.owner = "kristianmandrup";
  inputs.src-react16-0_3_4.repo = "react-16.nim";
  inputs.src-react16-0_3_4.ref = "refs/tags/0.3.4";
  inputs.src-react16-0_3_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-react16-0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-react16-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}