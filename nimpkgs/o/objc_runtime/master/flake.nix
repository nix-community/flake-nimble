{
  description = ''objective-c runtime bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-objc_runtime-master.flake = false;
  inputs.src-objc_runtime-master.type = "github";
  inputs.src-objc_runtime-master.owner = "bung87";
  inputs.src-objc_runtime-master.repo = "objc_runtime";
  inputs.src-objc_runtime-master.ref = "refs/heads/master";
  inputs.src-objc_runtime-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/yglukhov/darwin".type = "github";
  # inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  # inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";
  # inputs."https://github.com/yglukhov/darwin".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-objc_runtime-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-objc_runtime-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-objc_runtime-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}