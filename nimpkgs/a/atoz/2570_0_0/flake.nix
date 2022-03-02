{
  description = ''Amazon Web Services (AWS) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-atoz-2570_0_0.flake = false;
  inputs.src-atoz-2570_0_0.type = "github";
  inputs.src-atoz-2570_0_0.owner = "disruptek";
  inputs.src-atoz-2570_0_0.repo = "atoz";
  inputs.src-atoz-2570_0_0.ref = "refs/tags/2570.0.0";
  inputs.src-atoz-2570_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sigv4".type = "github";
  # inputs."sigv4".owner = "riinr";
  # inputs."sigv4".repo = "flake-nimble";
  # inputs."sigv4".ref = "flake-pinning";
  # inputs."sigv4".dir = "nimpkgs/s/sigv4";
  # inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/rest.git".type = "github";
  # inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  # inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";
  # inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-atoz-2570_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-atoz-2570_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-2570_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}