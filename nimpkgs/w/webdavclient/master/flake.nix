{
  description = ''WebDAV Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webdavclient-master.flake = false;
  inputs.src-webdavclient-master.type = "github";
  inputs.src-webdavclient-master.owner = "beshrkayali";
  inputs.src-webdavclient-master.repo = "webdavclient";
  inputs.src-webdavclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webdavclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webdavclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webdavclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}