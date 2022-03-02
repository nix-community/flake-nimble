{
  description = ''Wrapper for high performance HTTP parsing library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."joyent_http_parser-master".type = "github";
  inputs."joyent_http_parser-master".owner = "riinr";
  inputs."joyent_http_parser-master".repo = "flake-nimble";
  inputs."joyent_http_parser-master".ref = "flake-pinning";
  inputs."joyent_http_parser-master".dir = "nimpkgs/j/joyent_http_parser/master";
  inputs."joyent_http_parser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."joyent_http_parser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}