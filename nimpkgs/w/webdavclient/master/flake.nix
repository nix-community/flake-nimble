{
  description = ''WebDAV Client for Nim'';
  inputs.src-webdavclient-master.flake = false;
  inputs.src-webdavclient-master.type = "github";
  inputs.src-webdavclient-master.owner = "beshrkayali";
  inputs.src-webdavclient-master.repo = "webdavclient";
  inputs.src-webdavclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webdavclient-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webdavclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webdavclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}