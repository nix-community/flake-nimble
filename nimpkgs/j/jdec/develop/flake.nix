{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jdec-develop.flake = false;
  inputs.src-jdec-develop.type = "github";
  inputs.src-jdec-develop.owner = "diegogub";
  inputs.src-jdec-develop.repo = "jdec";
  inputs.src-jdec-develop.ref = "refs/heads/develop";
  inputs.src-jdec-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jdec-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jdec-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jdec-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}