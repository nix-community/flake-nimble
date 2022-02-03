{
  description = ''A Nim wrapper for librtlsdr'';
  inputs.src-nimrtlsdr-develop.flake = false;
  inputs.src-nimrtlsdr-develop.type = "github";
  inputs.src-nimrtlsdr-develop.owner = "jpoirier";
  inputs.src-nimrtlsdr-develop.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nimrtlsdr-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrtlsdr-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}