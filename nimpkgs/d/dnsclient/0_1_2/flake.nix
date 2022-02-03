{
  description = ''Simple DNS Client & Library'';
  inputs.src-dnsclient-0_1_2.flake = false;
  inputs.src-dnsclient-0_1_2.type = "github";
  inputs.src-dnsclient-0_1_2.owner = "ba0f3";
  inputs.src-dnsclient-0_1_2.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-dnsclient-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsclient-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}