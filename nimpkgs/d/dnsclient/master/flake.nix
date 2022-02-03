{
  description = ''Simple DNS Client & Library'';
  inputs.src-dnsclient-master.flake = false;
  inputs.src-dnsclient-master.type = "github";
  inputs.src-dnsclient-master.owner = "ba0f3";
  inputs.src-dnsclient-master.repo = "dnsclient.nim";
  inputs.src-dnsclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dnsclient-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}