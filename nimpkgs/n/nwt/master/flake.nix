{
  description = ''experiment to build a jinja like template parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nwt-master.flake = false;
  inputs.src-nwt-master.type = "github";
  inputs.src-nwt-master.owner = "enthus1ast";
  inputs.src-nwt-master.repo = "nimWebTemplates";
  inputs.src-nwt-master.ref = "refs/heads/master";
  inputs.src-nwt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/enthus1ast/nimcommandparser".type = "github";
  # inputs."https://github.com/enthus1ast/nimcommandparser".owner = "riinr";
  # inputs."https://github.com/enthus1ast/nimcommandparser".repo = "flake-nimble";
  # inputs."https://github.com/enthus1ast/nimcommandparser".ref = "flake-pinning";
  # inputs."https://github.com/enthus1ast/nimcommandparser".dir = "nimpkgs/h/https://github.com/enthus1ast/nimcommandparser";
  # inputs."https://github.com/enthus1ast/nimcommandparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/enthus1ast/nimcommandparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nwt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}