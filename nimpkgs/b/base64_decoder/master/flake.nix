{
  description = ''base64 cui'';
  inputs.src-base64_decoder-master.flake = false;
  inputs.src-base64_decoder-master.type = "github";
  inputs.src-base64_decoder-master.owner = "momeemt";
  inputs.src-base64_decoder-master.repo = "base64_cui";
  inputs.src-base64_decoder-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-base64_decoder-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base64_decoder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base64_decoder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}