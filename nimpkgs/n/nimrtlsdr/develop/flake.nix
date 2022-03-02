{
  description = ''A Nim wrapper for librtlsdr'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimrtlsdr-develop.flake = false;
  inputs.src-nimrtlsdr-develop.type = "github";
  inputs.src-nimrtlsdr-develop.owner = "jpoirier";
  inputs.src-nimrtlsdr-develop.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-develop.ref = "refs/heads/develop";
  inputs.src-nimrtlsdr-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrtlsdr-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrtlsdr-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}