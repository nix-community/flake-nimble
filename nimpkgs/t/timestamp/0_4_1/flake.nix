{
  description = ''An alternative time library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-timestamp-0_4_1.flake = false;
  inputs.src-timestamp-0_4_1.type = "github";
  inputs.src-timestamp-0_4_1.owner = "jackhftang";
  inputs.src-timestamp-0_4_1.repo = "timestamp.nim";
  inputs.src-timestamp-0_4_1.ref = "refs/tags/0.4.1";
  inputs.src-timestamp-0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timestamp-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timestamp-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timestamp-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}