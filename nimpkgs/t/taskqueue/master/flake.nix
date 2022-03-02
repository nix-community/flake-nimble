{
  description = ''High precision and high performance task scheduler '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-taskqueue-master.flake = false;
  inputs.src-taskqueue-master.type = "github";
  inputs.src-taskqueue-master.owner = "jackhftang";
  inputs.src-taskqueue-master.repo = "taskqueue.nim";
  inputs.src-taskqueue-master.ref = "refs/heads/master";
  inputs.src-taskqueue-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."timestamp".type = "github";
  # inputs."timestamp".owner = "riinr";
  # inputs."timestamp".repo = "flake-nimble";
  # inputs."timestamp".ref = "flake-pinning";
  # inputs."timestamp".dir = "nimpkgs/t/timestamp";
  # inputs."timestamp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."timestamp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-taskqueue-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taskqueue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-taskqueue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}