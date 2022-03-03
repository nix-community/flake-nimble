{
  description = ''std / sha1 extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sha1ext-develop.flake = false;
  inputs.src-sha1ext-develop.type = "github";
  inputs.src-sha1ext-develop.owner = "CORDEA";
  inputs.src-sha1ext-develop.repo = "sha1ext";
  inputs.src-sha1ext-develop.ref = "refs/heads/develop";
  inputs.src-sha1ext-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sha1ext-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sha1ext-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}