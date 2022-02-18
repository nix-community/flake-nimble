{
  description = ''React.js 16.x bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-react16-0_3_5.flake = false;
  inputs.src-react16-0_3_5.type = "github";
  inputs.src-react16-0_3_5.owner = "kristianmandrup";
  inputs.src-react16-0_3_5.repo = "react-16.nim";
  inputs.src-react16-0_3_5.ref = "refs/tags/0.3.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-react16-0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-react16-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-react16-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}