{
  description = ''Simple DNS Client & Library'';
  inputs.src-dnsclient-0_1_1.flake = false;
  inputs.src-dnsclient-0_1_1.type = "github";
  inputs.src-dnsclient-0_1_1.owner = "ba0f3";
  inputs.src-dnsclient-0_1_1.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-dnsclient-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsclient-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}