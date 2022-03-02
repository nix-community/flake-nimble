{
  description = ''EDN and Clojure parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-edn-0_2_3.flake = false;
  inputs.src-edn-0_2_3.type = "github";
  inputs.src-edn-0_2_3.owner = "rosado";
  inputs.src-edn-0_2_3.repo = "edn.nim";
  inputs.src-edn-0_2_3.ref = "refs/tags/0.2.3";
  inputs.src-edn-0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-edn-0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edn-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-edn-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}