{
  description = ''Directory listing tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-lq-master.flake = false;
  inputs.src-lq-master.type = "github";
  inputs.src-lq-master.owner = "madprops";
  inputs.src-lq-master.repo = "lq";
  inputs.src-lq-master.ref = "refs/heads/master";
  inputs.src-lq-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nap".type = "github";
  # inputs."nap".owner = "riinr";
  # inputs."nap".repo = "flake-nimble";
  # inputs."nap".ref = "flake-pinning";
  # inputs."nap".dir = "nimpkgs/n/nap";
  # inputs."nap".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."parsetoml".type = "github";
  # inputs."parsetoml".owner = "riinr";
  # inputs."parsetoml".repo = "flake-nimble";
  # inputs."parsetoml".ref = "flake-pinning";
  # inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  # inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-lq-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}