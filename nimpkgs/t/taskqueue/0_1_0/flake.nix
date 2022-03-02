{
  description = ''High precision and high performance task scheduler '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-taskqueue-0_1_0.flake = false;
  inputs.src-taskqueue-0_1_0.type = "github";
  inputs.src-taskqueue-0_1_0.owner = "jackhftang";
  inputs.src-taskqueue-0_1_0.repo = "taskqueue.nim";
  inputs.src-taskqueue-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-taskqueue-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."timestamp".type = "github";
  # inputs."timestamp".owner = "riinr";
  # inputs."timestamp".repo = "flake-nimble";
  # inputs."timestamp".ref = "flake-pinning";
  # inputs."timestamp".dir = "nimpkgs/t/timestamp";
  # inputs."timestamp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."timestamp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-taskqueue-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taskqueue-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-taskqueue-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}