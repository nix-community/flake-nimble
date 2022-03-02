{
  description = ''Wrapper for high performance HTTP parsing library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-joyent_http_parser-master.flake = false;
  inputs.src-joyent_http_parser-master.type = "github";
  inputs.src-joyent_http_parser-master.owner = "nim-lang";
  inputs.src-joyent_http_parser-master.repo = "joyent_http_parser";
  inputs.src-joyent_http_parser-master.ref = "refs/heads/master";
  inputs.src-joyent_http_parser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-joyent_http_parser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-joyent_http_parser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-joyent_http_parser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}