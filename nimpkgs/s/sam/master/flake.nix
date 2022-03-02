{
  description = ''Fast and just works JSON-Binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sam-master.flake = false;
  inputs.src-sam-master.type = "github";
  inputs.src-sam-master.owner = "OpenSystemsLab";
  inputs.src-sam-master.repo = "sam.nim";
  inputs.src-sam-master.ref = "refs/heads/master";
  inputs.src-sam-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jsmn".type = "github";
  # inputs."jsmn".owner = "riinr";
  # inputs."jsmn".repo = "flake-nimble";
  # inputs."jsmn".ref = "flake-pinning";
  # inputs."jsmn".dir = "nimpkgs/j/jsmn";
  # inputs."jsmn".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsmn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sam-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sam-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}