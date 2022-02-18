{
  description = ''std / sha1 extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sha1ext-develop.flake = false;
  inputs.src-sha1ext-develop.type = "github";
  inputs.src-sha1ext-develop.owner = "CORDEA";
  inputs.src-sha1ext-develop.repo = "sha1ext";
  inputs.src-sha1ext-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sha1ext-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sha1ext-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}